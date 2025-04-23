--drop table drogueria_tarigua.supplier_bill
create table drogueria_tarigua.supplier_bill ( 
supplier_nit varchar(20), 
code serial, 
total_money numeric(10,2), 
change numeric(10,2), 
date_order date,
constraint pk_code primary key (code),
constraint nn_total_money check (total_money is not null),
constraint nn_change check (change is not null),
constraint nn_date_order check (date_order is not null),
constraint fk_supplier_nit foreign key (supplier_nit) references drogueria_tarigua.supplier(nit)
);

select * from drogueria_tarigua.supplier_bill;