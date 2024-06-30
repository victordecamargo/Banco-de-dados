CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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
("Medicamentos Genericos","Medicamentos com princípios ativos equivalentes aos medicamentos de marca, oferecidos a preços mais acessíveis."),
("Higiene Pessoal","Produtos como sabonetes, xampus, condicionadores, cremes dentais, escovas de dentes, entre outros."),
("Suplementos Alimentares","Vitaminas, minerais, aminoácidos e outros suplementos nutricionais para promover a saúde."),
("Dermocosméticos","Produtos para cuidados com a pele."),
("Cuidados com o Bebê"," Fraldas, produtos para banho, cuidados com a pele e alimentação para bebês e crianças pequenas.");

INSERT INTO tb_produtos(nome,quantidade,datadefabricacao,datadevencimento,preco,produtos_id)
VALUES
	("Paracetamol", 6, "2023-01-15", "2024-01-15", 10.50, 1),
    ("Shampoo Clear", 50, "2023-02-10", "2024-02-10", 15.75, 2),
    ("Multivitamínico Centrum", 30, "2023-03-20", "2024-03-20", 29.90, 3),
    ("Protetor Solar La Roche-Posay", 40, "2023-04-05", "2024-04-05", 45.50, 4),
    ("Fralda Pampers Confort Sec", 80, "2023-05-12", "2024-05-12", 60.00, 5),
    ("Óleo Essencial de Lavanda", 20, "2023-06-08", "2026-05-01", 25.00, 2),
    ("Curativo Band-Aid Baby", 200, "2023-07-20", "2024-07-20", 5.80, 5),
    ("Creme Hidratante para Pés Neutrogena", 60, "2023-08-30", "2024-08-30", 19.99, 4);


SELECT*FROM tb_produtos;

SELECT*FROM tb_produtos WHERE preco > 50;

SELECT*FROM tb_produtos WHERE preco >5 AND preco <60;

SELECT*FROM tb_produtos WHERE nome LIKE  "%c%";

SELECT*FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.produtos_id = tb_categorias.id;

SELECT*FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.produtos_id = tb_categorias.id
WHERE tb_categorias.nome = "Higiene Pessoal";




