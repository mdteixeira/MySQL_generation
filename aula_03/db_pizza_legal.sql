-- criação do db
CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;

use db_pizzaria_legal;

-- criando tabela
CREATE TABLE tb_categoria(
id_categoria bigint auto_increment,
nome_categoria varchar(50),
primary key (id_categoria)
);

-- criando tabela
CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome varchar(30),
preco decimal(5,2),
ingredientes varchar(255),
primary key (id),
categoria bigint,
FOREIGN KEY (categoria) REFERENCES tb_categoria (id_categoria)
);

insert into tb_categoria (nome_categoria)
values
("Tradicionais"),
("Especiais"),
("Vegetarianas"),
("Veganas"),
("Doces");

-- inserindo valores
insert into tb_pizzas(nome, preco, ingredientes, categoria)
Values 
("Marguerita", 75.50, "mussarela, tomate, alho, manjericão", 1),
("Calabresa",78.00 , "Calabresa, mussarela, cebola roxa, azeitonas pretas", 1),
("Frango com catupiry", 92.00, "Frango desfiado, catupiry, mussarela, orégano", 2),
("Ribs", 105.00, "Mussarela, Costela de porco, molho barbecue, cebola roxa, bacon picado", 2),
("Abobrinha", 95.50, "Mussarela, Cream Cheese, Abobrinha gratinada, parmesão", 3),
("Rúcula", 107.50, "Tomate seco, mussarela de búfala, rúcula", 3),
("Brócoli", 77.00, "molho de tomate natural, queijo vegano, brócolis ao alho", 4),
("Caponata", 75.90, "Molho de tomate natural, caponata italiana, queijo vegano", 4),
("Churros", 95.50, "Doce de leite, canela, açúcar", 5),
("KitKat", 100.00, "chocolate ao leite, KitKat", 5);

SELECT * FROM tb_pizzas WHERE preco > 75;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 75 and 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

SELECT nome, ingredientes, preco, tb_categoria.nome_categoria
FROM tb_pizzas INNER JOIN tb_categoria
ON categoria = tb_categoria.id_categoria;

SELECT tb_pizzas.nome, nome_categoria
FROM tb_categoria INNER JOIN tb_pizzas
ON tb_categoria.id_categoria = tb_pizzas.categoria
WHERE nome_categoria = "Doces";