CREATE DATABASE db_escola;

use db_escola;

CREATE TABLE tb_alunos(

id bigint auto_increment,
nome_aluno varchar(255) not null,
serie int,
turma varchar(20),
media_notas decimal(4,2),
PRIMARY KEY (id)
);

Insert into tb_alunos(nome_aluno, serie, turma, media_notas)
VALUES("Enzo Pereira",8, "B", 10.00),
("Isadora Queiroz",8, "B", 5.50),
("Daniel Carvalho",8, "B", 7.00),
("Renato Teixeira",8, "B", 4.75),
("Pedro Castro",8, "B", 8.80),
("Amanda Vieira",8, "B", 9.00),
("Felipe Fagundes",8, "B", 10),
("Manuela Silva",8, "B", 7.75);

-- Select de alunos com nota superior a 7.0
SELECT * FROM tb_alunos WHERE media_notas >= 7.0;

-- Select de alunos com nota inferior a 7.0
SELECT * FROM tb_alunos WHERE media_notas < 7.0;

-- atualização de dados
UPDATE tb_alunos SET media_notas = 9.8 WHERE id = 10;