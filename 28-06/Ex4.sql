CREATE DATABASE db_cidade_das_carne;

USE db_cidade_das_carne;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255) NOT NULL,
quantidade INT NOT NULL,
datadefabricacao DATE NOT NULL,
datadevencimento DATE NOT NULL,
preco DECIMAL(6,2) NOT NULL,
produtos_id BIGINT,
CONSTRAINT fk_tb_produtos_tb_categorias
FOREIGN KEY (produtos_id)
REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome,descricao)
VALUES 
("Linguiça ","Linguiça estilo toscano: robusta e temperada."),
("Carne Vermelha Magra","Magra e versátil para diversos pratos."),
("Partes Frango","Frango cortado, temperado"),
("Figado","Fígado de boi, Figado de galinha: rico em nutrientes, ótimo para patês e pratos nutritivos."),
("Frango inteiro","Frango completo, temperado");

INSERT INTO tb_produtos(nome,quantidade,datadefabricacao,datadevencimento,preco,produtos_id)
VALUES
("Linguiça Toscana", 100, "2024-06-30", "2024-12-30", 15.50, 1),
("Carne Patinho", 50, "2024-06-30", "2024-12-30", 25.90, 2),
("Peito de Frango", 80, "2024-06-30", "2024-12-30", 12.75, 3),
("Fígado de Boi", 120, "2024-06-30", "2024-12-30", 18.60, 4),
("Linguiça Calabresa", 30, "2024-06-30", "2024-12-30", 9.99, 5),
("Carne Pernil", 100, "2024-06-30", "2024-12-30", 15.50, 1),
("Partes Peito de Frango", 50, "2024-06-30", "2024-12-30", 25.90, 2),
("Frango", 80, "2024-06-30", "2024-12-30", 12.75, 3);

SELECT*FROM tb_produtos;

SELECT*FROM tb_produtos WHERE preco > 50;

SELECT*FROM tb_produtos WHERE preco >10 AND preco <30;

SELECT*FROM tb_produtos WHERE nome LIKE  "%c%";

SELECT*FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.produtos_id = tb_categorias.id;

SELECT*FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.produtos_id = tb_categorias.id
WHERE tb_categorias.nome = "Figado";

