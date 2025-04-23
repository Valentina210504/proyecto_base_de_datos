--drop table drogueria_tarigua.supplier
create table drogueria_tarigua.supplier ( 
nit varchar(20), 
fist_name varchar(20), 
middle_name varchar(20), 
last_name_1 varchar(20), 
last_name_2 varchar(20), 
city_id varchar(3), 
state_id varchar(3),
constraint nn_nit primary key (nit),
constraint nn_fist_name check (fist_name is not null),
constraint nn_last_name_1 check (last_name_1 is not null),
constraint fk_city foreign key (city_id,state_id) references drogueria_tarigua.city(id, state_id),
constraint fk_state foreign key (state_id) references drogueria_tarigua.state(id)
);

select * from drogueria_tarigua.supplier;