
-- criação do DataBase
CREATE DATABASE db_rh;

-- utilização do db
USE db_rh;

-- criação da tabela colaboradores
CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255),
    data_nascimento DATE,
	salario DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserção de dados
INSERT INTO tb_colaboradores(nome, cargo, data_nascimento, salario)
VALUES ("Matheus Teixeira","Desenvolvedor","2004-11-15",1950.00),
("Renato Augusto","Tech Lead","2005-08-13",2200.00),
("Enzo Afonso","Engenheiro de hardware","2005-07-22",1900.00),
("Marcella da Silva","Engenheiro de hardware","2005-10-22",2050.50),
("Maria Fagundes","Gerente de pessoas","2005-10-30",3200.00);

-- Select de funcionarios com salario inferior a 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Select de funcionarios com salario superior a 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- atualização de parâmetros
ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(10,2);

-- atualização de dados
UPDATE tb_colaboradores SET salario = 4000.00 WHERE id = 21;
