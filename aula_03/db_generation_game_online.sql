-- criação do db
CREATE DATABASE IF NOT EXISTS db_generation_game_online;

use db_generation_game_online;

-- criando tabela de classes
CREATE TABLE tb_classes(
id_classe bigint auto_increment,
nome_classe varchar(50),
primary key (id_classe)
);

-- criando tabela de personagens
CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(30),
forca int,
defesa int,
carisma int, 
sabedoria int,
primary key (id),
classe bigint,
FOREIGN KEY (classe) REFERENCES tb_classes (id_classe)
);

-- criando personagens
insert into tb_personagens(nome, forca, defesa, carisma, sabedoria, classe)
Values ("Albo",3000, 5000, 4000, 2000, 1),
("Adric",5500, 3000, 3000, 4000, 2),
("Ushan", 2250, 3000, 5500, 1500, 3),
("Jon", 2550, 2700, 5750, 1720, 3),
("Tyrian", 5500, 3000, 1800, 5000, 4),
("Sherisya",5750, 2000, 2200, 4500, 4),
("Mathurin", 1250, 3000, 4350, 2500, 5);

-- criando classes
insert into tb_classes(nome_classe)
values ("Bardo"),
("Guerreiro"),
("Mago"),
("Bárbaro"),
("Clérigo");

-- poder de ataque > 2000
SELECT * FROM tb_classes WHERE forca > 2000;

-- 1000 > poder de defesa > 2000
SELECT * FROM tb_classes WHERE defesa between 1000 and 2000;

-- tem c no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

-- mostrar nome da classe do personagem
SELECT nome, forca, defesa, carisma, sabedoria, tb_classes.nome_classe
FROM tb_personagens INNER JOIN tb_classes
On tb_personagens.id = tb_classes.id_classe	;

-- pegar personagens por classe (bardo no exemplo)
SELECT tb_personagens.nome, nome_classe
FROM tb_classes INNER JOIN tb_personagens
ON tb_classes.id_classe = tb_personagens.id
WHERE nome_classe = "bardo"