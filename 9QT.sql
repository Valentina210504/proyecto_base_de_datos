--drop table drogueria_tarigua.customer_bill

create table drogueria_tarigua.customer_bill (

code_customer_bill integer, 
total_money numeric (10,2), 
change numeric (10,2), 
date_customer_bill date, 
customer_customer_id varchar (15), 
staff_staff_id varchar (3),

constraint pk_code_customer_bill primary key (code_customer_bill),
constraint chk_total_money check (total_money >=0),
constraint chk_change check (change >=0),
constraint nn_date_customer_bill check (date_customer_bill is not null),
constraint fk_customer_customer_id foreign key (customer_customer_id) references drogueria_tarigua.customer(customer_id),
constraint fk_manager_id foreign key (staff_staff_id) references drogueria_tarigua.staff(staff_id)
);

select * from drogueria_tarigua.customer_bill;