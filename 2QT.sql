--drop table drogueria_tarigua.city
create table drogueria_tarigua.city (
id varchar(3),
name varchar(20),
state_id varchar(3),
constraint nn_id check (name is not null),
constraint fk_state_city foreign key (state_id) references drogueria_tarigua.state(id),
constraint pk_city primary key (id,state_id)
);

select * from drogueria_tarigua.city;