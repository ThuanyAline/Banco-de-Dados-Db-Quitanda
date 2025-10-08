CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_pessoas(
	id bigint AUTO_INCREMENT, -- numero funcionario
    nome varchar(255) NOT NULL, -- nome dos funcinários
    cargo varchar(255) NOT NULL, --  cargo dos funcionários
    data_admissão date, -- data que o funcinário foi admtido
    salario decimal NOT NULL,
    PRIMARY KEY(id)
   );
   
    -- inserir dados na tabela para inserir esses dados vamos usar o comando INSERT INTO
INSERT INTO tb_pessoas(nome, cargo, data_admissão, salario)
VALUES("Ana", "Aux administrativo", "2025-10-27", "1800"); -- values significa valores
    
INSERT INTO tb_pessoas(nome, cargo, data_admissão, salario)
VALUES("João", "Aux Marketing", "2022-11-10", "2500"); -- values significa valores
    
INSERT INTO tb_pessoas(nome, cargo, data_admissão, salario)
VALUES("José", "Contabilidade", "2020-12-20", "2600"); -- values significa valores
    
INSERT INTO tb_pessoas(nome, cargo, data_admissão, salario)
VALUES("Maria", "Aux Administrativo", "2020-12-20", "1800"); -- values significa valores

INSERT INTO tb_pessoas(nome, cargo, data_admissão, salario)
VALUES("Lucia", "Vendedora", "2020-12-20", "3000"); -- values significa valores
    
SELECT * FROM tb_pessoas; -- SELECIONAR TUDO DA TABELA PRODUTOS E MOSTRAR
    
SELECT * FROM tb_pessoas WHERE salario > 2000; -- serve para mostrar somente o salario desejado, no caso o salario maior que 2000

SELECT * FROM tb_pessoas WHERE salario < 2000; -- serve para mostrar somente o produto desejado, no caso o salario menor que 2000
    
    -- SERVE PARA ALTERAR MODOFICAR A ESTRUTURA DE UM ATRIBITUTO, modify serve para modificar 
ALTER TABLE tb_pessoas MODIFY salario decimal(6,2); -- 6 pq tem seis casas e 2 para ter duas casas após
   
   -- UPDATE mexe no dado SET IDENTICA O QUE VAI FAZER A ALTERAÇÃO, where significa estabelecer a condição, só alterar o do abatae poe exemplo
UPDATE tb_pessoas SET salario = 1900.90 WHERE id = 1;

