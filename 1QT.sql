--drop table drogueria_tarigua.state

create table drogueria_tarigua.state (
id varchar(3),
name varchar(20),
constraint pk_id primary key (id),
constraint nn_id check (name is not null)
);

select * from drogueria_tarigua.state;

