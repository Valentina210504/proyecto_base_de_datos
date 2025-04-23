--drop table drogueria_tarigua.contract
create table drogueria_tarigua.contract (
code_contract integer,
staff_staff_id varchar(3),
start_date date,
end_date date,
employee_role varchar(20),
salary numeric(10,2),
work_schedule varchar(20),
constraint nn_start_date check (start_date is not null),
constraint nn_end_date check (end_date is not null),
constraint nn_employee_role check (employee_role is not null),
constraint nn_salary check (salary >= 0),
constraint nn_work_schedule check (work_schedule is not null),
constraint fk_staff_staff_id foreign key (staff_staff_id) references drogueria_tarigua.staff(staff_id),
constraint pk_code_contract primary key (code_contract,staff_staff_id)
);

select *from drogueria_tarigua.details_bill;
