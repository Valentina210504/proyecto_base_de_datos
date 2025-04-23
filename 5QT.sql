--drop table drogueria_tarigua.product

create table drogueria_tarigua.product( 
code_product varchar (10), 
name varchar (20), 
expiration_date date, 
price numeric (10,2), 
description varchar (200), 
stock integer, 
constraint pk_code_product primary key (code_product),
constraint nn_name check (name is not null),
constraint nn_expiration_date check (expiration_date is not null),
constraint chk_price check (price >= 0),
constraint nn_description check (description is not null),
constraint chk_stock check (stock >= 0)
);

select * from drogueria_tarigua.product;