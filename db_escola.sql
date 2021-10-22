create database db_escola;

use db_escola;
create table registro_alunes(
RA int not null auto_increment,
nome varchar(255) not null,
curso varchar(255) not null,
turma int not null, 
nota decimal(4, 2),
primary key (RA)
);

insert into registro_alunos(nome, curso, turma, nota) values ("alune1", "Bloco I",   2, 2);
insert into registro_alunos(nome, curso, turma, nota) values ("alune2", "Bloco III", 5, 2);
insert into registro_alunos(nome, curso, turma, nota) values ("alune3", "Bloco II",  9, 10);
insert into registro_alunos(nome, curso, turma, nota) values ("alune4", "Bloco II",  9, 10);
insert into registro_alunos(nome, curso, turma, nota) values ("alune5", "Bloco II",  8, 8);
insert into registro_alunos(nome, curso, turma, nota) values ("alune5", "Bloco I",   1, 5);
insert into registro_alunos(nome, curso, turma, nota) values ("alune7", "Bloco I",   6, 6);
insert into registro_alunos(nome, curso, turma, nota) values ("alune8", "Bloco III", 7, 7);

select * from registro_alunos where nota > 7;
select * from registro_alunos where nota < 7;

update registro_alunos set nota = 10 where RA = 2;
