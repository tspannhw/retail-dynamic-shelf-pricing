create table prices
(
item_id serial PRIMARY KEY,
price FLOAT,
created_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

insert into prices
(price)
values
(9.99);
