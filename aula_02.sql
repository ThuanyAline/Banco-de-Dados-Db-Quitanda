CREATE DATABASE db_quitanda; -- para criar o banco

USE db_quitanda; -- use de usar

CREATE TABLE tb_produtos( -- create table significa criando tabela
     id bigint AUTO_INCREMENT, -- long = numero inteiro grande
     nome varchar(255) NOT NULL, -- varchar = string nome
     quantidade int, -- int =  numero inteiro
     data_validade date, -- date é igual DATA
     preco decimal NOT NULL, --  decimal mesma coisa que FLOAT valores porcentual, monetarios 
     PRIMARY KEY(id) -- chave primaria 
);

-- inserir dados na tabela para inserir esses dados vamos usar o comando INSERT INTO

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Abacate", 10, "2025-10-27", 15.90); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Laranja", 50, "2025-10-17", 12.50); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Banana", 200, "2025-10-18", 12.90); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Morango", 70, "2025-10-11", 10.00); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Kiwi", 700, "2025-10-11", 20.00); -- values significa val

SELECT * FROM tb_produtos; -- SELECIONAR TUDO DA TABELA PRODUTOS E MOSTRAR

SELECT  nome, preco FROM tb_produtos WHERE id = 4; -- serve para mostrar somente o produto desejado, NESSE CASO NÃO USA * pq quer usar nome e preco , o * MUDA TUDO

SELECT * FROM tb_produtos WHERE id = 4; -- serve para mostrar somente o produto desejado

SELECT * FROM tb_produtos WHERE preco > 18; -- serve para mostrar somente o produto desejado, no caso o produto com preço maior que 18

SELECT * FROM tb_produtos WHERE id != 4; -- serve para mostrar somente o produto desejado que seja difrente 


-- SERVE PARA ALTERAR MODOFICAR A ESTRUTURA DE UM ATRIBITUTO, modify serve para modificar 
ALTER TABLE tb_produtos MODIFY preco decimal(6,2); 

-- UPDATE mexe no dado SET IDENTICA O QUE VAI FAZER A ALTERAÇÃO, where significa estabelecer a condição, só alterar o do abatae poe exemplo
UPDATE tb_produtos SET preco = 15.90 WHERE id = 1;

DELETE FROM tb_produtos WHERE id = 3; -- excluir a linha do produto 3

SET SQL_SAFE_UPDATES = 1; -- PARA BLOQUEAR E DESBLOQUER uma trava para não alterar tudo caso  você esqueça o WHERE

ALTER TABLE tb_produtos ADD descricao varchar (255); -- o add significa adicionar um novo atributo, nova coluna na tabela

ALTER TABLE tb_produtos CHANGE descricao description varchar(255); -- change modifica o nome do atributo

ALTER TABLE tb_produtos DROP description; -- DROP serve para apagar o atributo




