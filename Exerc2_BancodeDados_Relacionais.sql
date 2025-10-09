-- Cria o banco de dados da pizzaria, se ainda não existir
CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;

-- Seleciona o banco para começar a usar
USE db_pizzaria_legal;

-- Criação da tabela de categorias de pizza
CREATE TABLE IF NOT EXISTS tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY, -- ID único para cada categoria
    nome_categoria VARCHAR(50) NOT NULL,         -- Nome da categoria (ex: Doce, Tradicional)
    descricao TEXT                               -- Descrição da categoria
);

-- Insere 5 categorias na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
("Tradicional", "Pizzas com sabores clássicos e populares"),
("Doce", "Pizzas com ingredientes doces"),
("Vegetariana", "Pizzas sem carne, com vegetais"),
("Premium", "Pizzas com ingredientes especiais"),
("Vegana", "Pizzas sem ingredientes de origem animal");

-- Criação da tabela de pizzas
CREATE TABLE IF NOT EXISTS tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,     -- ID único para cada pizza
    nome_pizza VARCHAR(100) NOT NULL,            -- Nome da pizza
    descricao TEXT,                              -- Descrição dos ingredientes
    preco DECIMAL(6,2) NOT NULL,                 -- Preço da pizza
    tamanho VARCHAR(20),                         -- Tamanho da pizza (ex: Média, Grande)
    id_categoria INT,                            -- ID da categoria (ligação com tb_categorias)
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria) -- Chave estrangeira
);

-- Insere 8 pizzas na tabela tb_pizzas, cada uma ligada a uma categoria
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES
("Marguerita", "Molho de tomate, mussarela e manjericão", 42.00, "Média", 1),
("Calabresa", "Calabresa fatiada, cebola e mussarela", 48.00, "Grande", 1),
("Chocolate com Morango", "Chocolate derretido e morangos frescos", 55.00, "Média", 2),
("Brócolis com Catupiry", "Brócolis, catupiry e alho", 46.00, "Média", 3),
("Quatro Queijos", "Mussarela, provolone, gorgonzola e parmesão", 60.00, "Grande", 4),
("Banana com Canela", "Banana, canela e leite condensado", 50.00, "Média", 2),
("Vegana Verde", "Molho de tomate, rúcula, tomate seco e tofu", 52.00, "Média", 5),
("Mexicana", "Carne moída, pimenta jalapeño e cheddar", 65.00, "Grande", 4);

-- Seleciona todas as pizzas com preço maior que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Seleciona todas as pizzas com preço entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Seleciona todas as pizzas que têm a letra "M" no nome
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

-- Junta os dados das pizzas com suas categorias
SELECT 
    p.id_pizza,
    p.nome_pizza,
    p.preco,
    c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

-- Junta os dados e mostra apenas as pizzas da categoria "Doce"
SELECT 
    p.id_pizza,
    p.nome_pizza,
    p.preco,
    c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';
