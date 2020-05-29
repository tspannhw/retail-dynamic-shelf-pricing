create table prices
(
item_id integer NOT NULL,
price FLOAT NOT NULL,
created_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (item_id)
);

insert into prices
(item_id, price)
values
(1, 9.99);

update prices
set price = 10.99,
updated_on = CURRENT_TIMESTAMP
where item_id = 1;

SELECT * FROM "public"."prices" LIMIT 100
