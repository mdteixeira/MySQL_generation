SELECT * FROM db_quitanda.tb_produtos;

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

UPDATE tb_produtos SET preco = 11.90 WHERE id = 4;

-- adicionar atributo
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- remover atributo
ALTER TABLE tb_produtos DROP descricao;

-- renomear atributo
ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(255);

-- puxar dados especificos de uma tabela
SELECT nome_produto, preco FROM tb_produtos;

-- selecionar tudo
SELECT * FROM tb_produtos WHERE id > 1;

-- selecionar especificos
SELECT * FROM tb_produtos WHERE data_validade >= "2023-12-20";
SELECT * FROM tb_produtos WHERE preco > 10;

SELECT @@collation_database;

-- select formatado (nao altera a tabela, apenas a mostra como desejamos)
SELECT nome_produto, CONCAT('R$ ', format(preco, 2, 'pt-BR')) AS preço from tb_produtos;

-- select com data formatada
SELECT nome_produto, date_format(data_validade, '%d/%m/%Y') AS Data_validade from tb_produtos;