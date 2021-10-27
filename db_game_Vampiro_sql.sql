create database db_generation_game_online;

use db_generation_game_online;

create table  tb_classe(
	id_classe int not null auto_increment,
	nome varchar(30),
	defesa int not null,
	ataque int not null,
	primary key (id_classe)
);

insert into tb_classe(nome, defesa, ataque) values ("Assamitas", 300, 3500);
insert into tb_classe(nome, defesa, ataque) values ("Brujah", 4000, 500);
insert into tb_classe(nome, defesa, ataque) values ("Gangrel", 600, 4000);
insert into tb_classe(nome, defesa, ataque) values ("Lasombra", 3000,2500);
insert into tb_classe(nome, defesa, ataque) values ("Nosferatu", 1500, 2800);

create table tb_personagem (
	id_char int auto_increment,
	clan int not null,
	nome varchar(30),
	poderes varchar(30),
	linhagem varchar(200),
	fk_classe int not null,
    primary key (id_char),
    foreign key (fk_classe) references tb_classe(id_classe)
);

insert into tb_personagem (clan, nome, poderes, linhagem, fk_classe) values ("Assamitas", "Gargulas", "anarquistas", 1);
insert into tb_personagem (clan, nome, poderes, linhagem, fk_classe) values ("Brujah","Panders", "Camarilla", 2);
insert into tb_personagem (clan, nome, poderes, linhagem, fk_classe) values ("Brujah", "Gehenna", "Camarilla", 2);
insert into tb_personagem (clan, nome, poderes, linhagem, fk_classe) values ("Nosferatu","Gehenna", "Camarilla", 5);
insert into tb_personagem (clan, nome, poderes, linhagem, fk_classe) values ("Nosferatu", "Gehenna",  "Camarilla ", 5);
insert into tb_personagem (clan, nome, poderes, linhagem, fk_classe) values ("Lasombra", "Nirvana",  "Inconnu", 4);
insert into tb_personagem (clan, nome, poderes, linhagem, fk_classe) values ("Gangrel","Nirvana", "Inconnu", 3);
insert into tb_personagem (clan, nome, poderes, linhagem, fk_classe) values ("Lasombra", "Sabios", "Sabá", 4);

select tb_personagem.nome as "Player", tb_classe.ataque as "Poderes"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.ataque > 2000;

select tb_personagem.nome as "Player", tb_classe.defesa as "Linhagem"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.defesa between 1000 and 2000;

select nome from tb_personagem where nome like "%c%";

select tb_personagem.nome as "Nome", tb_classe.nome as "Classe"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.id_classe = 4; 