--  Apaga o banco de dados se ele já existir (para começar do zero)
DROP DATABASE IF EXISTS db_generation_game_online;

-- Cria o banco de dados com o nome especificado
CREATE DATABASE db_generation_game_online;

--  Seleciona o banco para começar a trabalhar nele
USE db_generation_game_online;

--  Criação da tabela tb_classes
-- Essa tabela guarda as classes dos personagens 
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,             -- Chave primária: ID único para cada classe
    nome VARCHAR(255) NOT NULL,           -- Nome da classe
    descricao VARCHAR(255) NOT NULL,      -- Descrição da classe
    PRIMARY KEY (id)                      -- Define a chave primária
);

--  Insere 5 registros na tabela tb_classes
INSERT INTO tb_classes (nome, descricao) VALUES
("Fadinha", "Espalha magia e alegria onde passar"),
("Unicórnio", "Usa o poder do arco-íris para proteger seus amigos"),
("Coelhinho Guerreiro", "Usa o poder da multiplicação"),
("Gatinha Ninja", "Poder da agilidade e estilo"),
("Panda Drominhoco", "Poder da calma e da cura");

--  Criação da tabela tb_personagens
-- Essa tabela guarda os personagens do jogo e suas características
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,             -- Chave primária: ID único para cada personagem
    nome VARCHAR(255) NOT NULL,           -- Nome do personagem
    poder_ataque INT,                     -- Valor do poder de ataque
    poder_defesa INT,                     -- Valor do poder de defesa
    nivel INT,                            -- Nível do personagem
    classe_id BIGINT,                     -- Chave estrangeira: ID da classe do personagem
    PRIMARY KEY (id),                     -- Define a chave primária
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id) -- Cria a relação com tb_classes
);

--  Insere 8 registros na tabela tb_personagens, com ligação à tabela tb_classes
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
("Luluzinha", 1800, 1300, 15, 1),     -- Fadinha
("Estrelinha", 2300, 1200, 22, 2),    -- Unicórnio
("Bolinha", 2600, 2000, 25, 3),       -- Coelhinho Guerreiro
("Mimi", 2400, 1000, 20, 4),          -- Gatinha Ninja
("Pompom", 900, 2500, 18, 5),         -- Panda Drominhoco
("Cookie", 2100, 950, 27, 3),         -- Coelhinho Guerreiro
("Cacau", 2800, 1400, 16, 4),         -- Gatinha Ninja
("Mel", 3100, 900, 30, 2);            -- Unicórnio

--  SELECT que retorna personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

-- SELECT que retorna personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

--  SELECT que retorna personagens com a letra "C" no nome
SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';

-- SELECT com INNER JOIN entre tb_personagens e tb_classes
-- Mostra os dados dos personagens junto com o nome da classe
SELECT 
    tb_personagens.id,
    tb_personagens.nome,
    tb_personagens.poder_ataque,
    tb_personagens.poder_defesa,
    tb_personagens.nivel,
    tb_classes.nome AS classe --  as para alterar nome
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- SELECT com INNER JOIN que mostra apenas os personagens da classe "Unicórnio"
SELECT 
    tb_personagens.id,
    tb_personagens.nome,
    tb_personagens.poder_ataque,
    tb_personagens.poder_defesa,
    tb_personagens.nivel,
    tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = 'Unicórnio';
