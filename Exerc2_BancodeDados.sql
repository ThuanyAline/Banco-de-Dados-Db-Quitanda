CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id bigint AUTO_INCREMENT, -- identificação dos produtos
    nome varchar(255) NOT NULL, -- nome dos produtos
    quantidade int, -- quantidade dos produtos
    data_compra date, -- data que o funcinário foi admtido
    preco decimal NOT NULL,
    PRIMARY KEY(id)
);

-- inserir dados na tabela para inserir esses dados vamos usar o comando INSERT INTO
INSERT INTO tb_produtos(nome, quantidade, data_compra, preco)
VALUES("Whey", "2", "2025-10-08", "500"); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_compra, preco)
VALUES("Creatina", "3", "2025-08-08", "300"); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_compra, preco)
VALUES("Pasta de Amendoin", "1", "2025-03-30", "50"); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_compra, preco)
VALUES("Albumina", "1", "2025-07-08", "140"); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_compra, preco)
VALUES("Multivitamico", "2", "2025-02-11", "120"); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_compra, preco)
VALUES("Barra de Cereal", "3", "2025-05-23", "150"); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_compra, preco)
VALUES("Colageno", "1", "2025-04-17", "79"); -- values significa valores

INSERT INTO tb_produtos(nome, quantidade, data_compra, preco)
VALUES("Balança digital", "1", "2025-07-08", "99"); -- values significa valores

SELECT * FROM tb_produtos; -- SELECIONAR TUDO DA TABELA PRODUTOS E MOSTRAR

SELECT * FROM tb_produtos WHERE preco > 500; -- serve para mostrar somente o produto desejado, no caso o produto com preço maior que 500

SELECT * FROM tb_produtos WHERE preco < 500; -- serve para mostrar somente o produto desejado, no caso o produto com preço menor que 500

-- SERVE PARA ALTERAR MODOFICAR A ESTRUTURA DE UM ATRIBITUTO, modify serve para modificar 
ALTER TABLE tb_produtos MODIFY preco decimal(2,2); -- 2 pq tem seis casas e 2 para ter duas casas após

UPDATE tb_produtos SET preco = 88.90 WHERE id = 8;





