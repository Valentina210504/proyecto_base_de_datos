--drop table drogueria_tarigua.details_supplier

create table drogueria_tarigua.details_supplier( 
product_product_code varchar (10), 
quantity integer, 
price numeric (10,2), 
subtotal numeric (10,2), 
supplier_bill_code integer, 
line_item_id serial,
constraint chk_quantity check (quantity >= 0),
constraint chk_price check (price >= 0),
constraint chk_subtotal check (subtotal >= 0),
constraint fk_product_product_code foreign key (product_product_code) references drogueria_tarigua.product(code_product),
constraint fk_supplier_bill_code foreign key (supplier_bill_code) references drogueria_tarigua.supplier_bill(code),
constraint pk_line_item_id primary key (supplier_bill_code,line_item_id)
);

select * from drogueria_tarigua.details_supplier;
