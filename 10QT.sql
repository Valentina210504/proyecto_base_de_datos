--drop table drogueria_tarigua.details_bill
create table drogueria_tarigua.details_bill (

line_item_id_bill varchar(3), 
quantity integer, 
price numeric(10,2), 
subtotal numeric(10,2), 
product_product_code varchar(10), 
customer_bill_code_customer_bill integer,

constraint chk_quantity check (quantity > 0),
constraint chk_price check (price >= 0),
constraint chk_subtotal check (subtotal >= 0),
constraint fk_product_product_code foreign key (product_product_code) references drogueria_tarigua.product(code_product),
constraint fk_customer_bill_code_customer_bill foreign key (customer_bill_code_customer_bill) references drogueria_tarigua.customer_bill(code_customer_bill),
constraint pk_line_item_id_bill primary key (line_item_id_bill,customer_bill_code_customer_bill)
);

select *from drogueria_tarigua.details_bill;