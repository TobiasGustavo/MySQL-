create database db_casa_Nuestra;

use db_casa_Nuestra;

create table tb_tipos(
	id bigint auto_increment,
    classificacao varchar(255),
    data_entrada_estoque date not null,
    entrega enum ('Sim', 'Não'),
    primary key (id)
    );
    
insert into tb_categoria(classificacao, data_entrada_estoque, entrega) values 
("Cimento",'01-10-2021', 'Não'),
("Areia",'01-10-2021', 'Não'),
("Materiales Simples",'01-10-2021', 'Sim'),
("Lustres",'01-10-2021', 'Sim'),
("Ceramicas", '01-10-2021', 'Sim');
    
create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int, 
    peso  int,
    valor decimal(6,2) not null,
    fabricante varchar(255) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, quantidade, valor, fabricante, categoria_id) values 
("Cimento", null, 2000, 40.66, "Bom", 1),
("Areia", null, 1000, 18.00 , "Fina", 2),
("Materiales Simples", null, 1000, 30.00,"Diversos", 3),
("Lustres", 10, null, 50.000, "TokStok", 4),
("Pisos Antiderrapante", 15.00, null, 10.50,"Artens", 5);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 2