--drop table drogueria_tarigua.customer

create table drogueria_tarigua.customer( 
customer_id varchar (15), 
fist_name varchar (20), 
middle_name varchar (20) , 
last_name_1 varchar (20), 
last_name_2 varchar (20) , 
date_of_birth date,
constraint pk_customer_id primary key (customer_id),
constraint nn_fist_name check (fist_name is not null),
constraint nn_last_name_1 check (last_name_1 is not null),
constraint nn_date_of_birth check (date_of_birth is not null)
);

select * from drogueria_tarigua.customer;