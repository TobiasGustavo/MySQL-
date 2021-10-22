create database db_rh;

use db_rh;


create table empresa(
cpf bigint not null,
nome varchar (255) not null,
setor varchar(255),
função varchar(255),
salario decimal (7, 2) not null,
primary key(cpf)
);


insert into empresa(cpf, nome, setor, funcao, salario) value (100000000000, "Tobias",  "Tech", "Developer", 3.0000);
insert into empresa(cpf, nome, setor, funcao, salario) value (200000000000, "Julia",   "Financeiro", "Gerente", 10.00000);
insert into empresa(cpf, nome, setor, funcao, salario) value (300000000000, "Mariana", "Product Owner", "Gerente", 50.00000);
insert into empresa(cpf, nome, setor, funcao, salario) value (400000000000, "Marina",  "Gestora", "Business", 19.00000);
insert into empresa(cpf, nome, setor, funcao, salario) value (500000000000, "Joao",    "Diretor", "Negocios", 20.00000);

select * from empresa where salario > 3.0000;
select * from empresa where salario < 50.0000;

update empresa set salario = 3.0000 where cpf= 100000000000;
