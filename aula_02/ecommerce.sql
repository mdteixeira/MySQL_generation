
-- criação do DataBase
CREATE DATABASE db_mystore;

-- utilização do db
USE db_mystore;

-- criação da tabela colaboradores
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome_produto VARCHAR(255) NOT NULL,
	descricao VARCHAR(255),
    quantidade int,
	preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserção de dados
INSERT INTO tb_produtos(nome_produto, descricao, quantidade, preco)
VALUES ("Ryzen 7 5700X","Processador AMD",300,1130.50),
("RX5500","Placa de vídeo Gigabyte",425, 1020.35),
("RTX 3050","Placa de vídeo Zotac",230, 1700.00),
("CV550","Fonte Corsair de 550W",345, 350.00),
("Odyssey G30","Monitor Samsung Odyssey G30 24p. 144hz",35, 890.00),
("DeathAdder essential", "Mouse gamer Razer branco", 200, 152.90),
("K835","Teclado gamer mecânico Logitech", 135, 250.00),
("Fury Beast","Memória RAM Kingston 8GB DDR4 2300MHz",4500, 290.00);

-- Select de produtos com valor inferior a 500
SELECT * FROM tb_produtos WHERE preco < 500;

-- Select de produtos com valor superior a 500
SELECT * FROM tb_produtos WHERE preco > 500;

-- atualização de parâmetros
ALTER TABLE tb_produtos MODIFY preco DECIMAL(8,2);

-- atualização de dados
UPDATE tb_produtos SET preco = 1050.00 WHERE id = 2;
