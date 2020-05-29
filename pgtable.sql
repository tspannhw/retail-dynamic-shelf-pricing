create table prices
(
item_id integer NOT NULL,
price FLOAT NOT NULL,
created_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (item_id, price)
);

insert into prices
(item_id, price)
values
(1, 9.99);
