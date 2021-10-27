create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
	id_categoria bigint auto_increment,
    tarja varchar(35) not null,
	receita boolean,  -- true ou false
    
    primary key (id_categoria)
);

create table tb_produto (	
	id_produto bigint auto_increment,
    nome varchar (35) not null,
	laboratorio varchar(35) not null,
	preco real,
	estoque int (3),
    
    key_categoria bigint,
    primary key (id_produto),
    foreign key (key_categoria) references tb_categoria(id_categoria)    
);

select * from tb_categoria;

insert into tb_categoria (tipo, receita) 
		values  ("Cosmeticos", True),
				("Fitoterapicos", true),
                ("Homeopaticos", true),
                ("Manipulados", false),
                ("Genérico", null);				                

select * from tb_produto;

insert into tb_produto (nome, marca, preco, estoque, key_categoria)
	values  ("PomadaVerde", "Doctor", 50.00, 100, 1),
			("FloraldeBach", "Flowers", 60.00, 10, 2),
			("Passiflora", "Naturalis", 40.00, 100, 3),
            ("TinturaCopaiba", "UnicPhar", 30.50, 10, 4),
            ("Dibiroba", "EuroPharma", 10.90, 100, 5),
            ("FloralDaAmazonia", "NaturalFlow", 50.90, 10, 2),
            ("Rexobona", "Rexon", 12.90 ,70, 1),
            ("EucaliptusSilvestres", "NaturalForma", 19.99, 100, 2);

select * from tb_produto where preco > 40.00;
select * from tb_produto where preco < 35.00;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "A%";

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	order by tb_produto.nome;

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tipo = "Cosmeticos";

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tipo = "Fitoterapicos";

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tipo = "Homeopaticos";
    
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tipo like "%Gen%";

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tipo like "%M%";