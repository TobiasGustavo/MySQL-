create database db_ecommerce;

use db_ecommerce;

create table produtos(
id_produto bigint auto_increment,
produto varchar (255)not null,
quantidade int (255) not null,
marca varchar (255) not null,
setor varchar(255) not null,
preço decimal (7, 2) not null,
primary key (id_produto)
);

insert into produtos(produto, quantidade, marca, setor, preço) values ("Casaco", 500, "Nike", "Masculino", 400.00);
insert into produtos(produto, quantidade, marca, setor, preço) values ("Camisa", 100, "JJ", "Masculino", 300.00);
insert into produtos(produto, quantidade, marca, setor, preço) values ("Gorro", 20, "Gap", "Feminino", 500.00);
insert into produtos(produto, quantidade, marca, setor, preço) values ("Calca", 15, "CEA" , "Feminino", 400.00);
insert into produtos(produto, quantidade, marca, setor, preço) values ("Sapato", 12, "SideWalk", "Masculino", 400.00);
insert into produtos(produto, quantidade, marca, setor, preço) values ("Sapatenis", 3, "Adidas", "Unissex", 500.00);
insert into produtos(produto, quantidade, marca, setor, preço) values ("Tenis", 10, "Puma", "Feminino", 500.00);
insert into produtos(produto, quantidade, marca, setor, preço) values ("Chinelo", 10, "Havaianas", "Unissex", 200.00);

select * from produtos where preço > 500.00;
select * from produtos where preço < 500.00;
update produtos set preço = 500.00 where id_produto = 8;
