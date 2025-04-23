--drop table drogueria_tarigua.staff

create table drogueria_tarigua.staff( 
staff_id varchar (10), 
fist_name varchar (20), 
middle_name varchar (20), 
last_name_1 varchar (20), 
last_name_2 varchar (20) , 
phone_number varchar (10), 
email varchar (30), 
manager_id varchar (15) , 
salary numeric (10,2) , 
tipe_worked varchar (30),
constraint pk_staff_id primary key (staff_id),
constraint nn_fist_name check (fist_name is not null),
constraint nn_last_name_1 check (last_name_1 is not null),
constraint nn_phone_number check (phone_number is not null),
constraint nn_email check (email is not null),
constraint chk_salary check (salary >=0),
constraint nn_tipe_worked check (tipe_worked is not null),
constraint fk_manager_id foreign key (manager_id) references drogueria_tarigua.staff(staff_id)
);

select * from drogueria_tarigua.staff;