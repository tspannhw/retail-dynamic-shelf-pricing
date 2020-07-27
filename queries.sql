select upc, originstore, updatedate, brandname, price, itemdescription, displayimage, longdescription, msrp, tpr
from itemprice
order by updatedate desc
