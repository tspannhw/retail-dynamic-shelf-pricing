select upc, originstore, updatedate, brandname, price, itemdescription, displayimage, longdescription, msrp, tpr
from itemprice
order by updatedate desc;

select upc, originstore, updatedate, brandname, price, itemdescription, displayimage, longdescription, msrp, tpr
from itemprice
where brandname = 'Oreo'
order by brandname asc,updatedate desc;

select upc, brandname, originstore
from itemprice
group by brandname, upc, originstore
order by brandname asc;


