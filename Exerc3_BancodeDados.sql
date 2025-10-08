CREATE DATABASE db_registro_escola; -- para criar o banco

USE db_registro_escola;

CREATE TABLE tb_alunos(
   id bigint AUTO_INCREMENT, -- identificação dos alunos
    nome varchar(255) NOT NULL, -- nome dos alunos
    idade int, -- idade dos alunos
    data_matricula date, -- data que o aluno foi matriculado
    nota decimal (4,2),
    PRIMARY KEY(id)
    );
    
-- inserir dados na tabela para inserir esses dados vamos usar o comando INSERT INTO

INSERT INTO tb_alunos(nome, idade, data_matricula, nota)
VALUES("Tereza Silva", 10, "2022-10-27", 10.00); -- values significa valores

INSERT INTO tb_alunos(nome, idade, data_matricula, nota)
VALUES("Talita albuquerque", 15, "2020-10-30", 9.00); -- values significa valores

INSERT INTO tb_alunos(nome, idade, data_matricula, nota)
VALUES("Tulio Santos", 12, "2022-10-20", 7.00); -- values significa valores

INSERT INTO tb_alunos(nome, idade, data_matricula, nota)
VALUES("Tania Viera", 17, "2022-10-16", 8.00); -- values significa valores

INSERT INTO tb_alunos(nome, idade, data_matricula, nota)
VALUES("Talles Oliveira", 8, "2023-10-14", 5.00); -- values significa valores

INSERT INTO tb_alunos(nome, idade, data_matricula, nota)
VALUES("Tomas Alves", 11, "2022-10-18", 10.00); -- values significa valores

INSERT INTO tb_alunos(nome, idade, data_matricula, nota)
VALUES("Tamila Jardins", 17, "2022-10-12", 8.00); -- values significa valores

INSERT INTO tb_alunos(nome, idade, data_matricula, nota)
VALUES("Tamara Chaves", 14, "2022-10-12", 9.00); -- values significa valores

SELECT * FROM tb_alunos; -- SELECIONAR TUDO DA TABELA PRODUTOS E MOSTRAR

SELECT * FROM tb_alunos WHERE nota > 7.00; -- serve para mostrar somente o produto desejado, no caso o produto com preço maior que 7

SELECT * FROM tb_alunos WHERE nota < 7.00; -- serve para mostrar somente o produto desejado, no caso o produto com preço menor que 7

ALTER TABLE tb_alunos MODIFY nota decimal(2,2); -- 2 pq tem seis casas e 2 para ter duas casas após

UPDATE tb_alunos SET nota = 10.00 WHERE id = 3;

