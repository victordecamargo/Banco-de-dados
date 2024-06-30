CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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

INSERT INTO tb_categorias(nome, descricao)
VALUES 
("Tintas", "Produtos essenciais para pintura de interiores e exteriores."),
("Ferramentas Elétricas", "Equipamentos de alta qualidade para obras e reformas."),
("Material de Construção", "Variedade em materiais como cimento, areia, e tijolos."),
("Iluminação", "Lâmpadas e luminárias para todos os ambientes."),
("Segurança e Proteção", "Equipamentos de segurança para operários e obras.");



INSERT INTO tb_produtos (nome, quantidade, datadefabricacao, datadevencimento, preco, produtos_id)
VALUES
("Tinta Látex Branca", 50, '2024-06-30', '2024-12-30', 25.90, 1),           
("Tinta Acrílica Premium", 30, '2024-06-30', '2024-12-30', 35.75, 1),       
("Furadeira de Impacto 500W", 20, '2024-06-30', '2024-12-30', 89.99, 2),    
("Serra Circular 1200W", 15, '2024-06-30', '2024-12-30', 149.50, 2),        
("Cimento Portland", 100, '2024-06-30', '2024-12-30', 12.50, 3),            
("Areia Lavada Fina", 80, '2024-06-30', '2024-12-30', 8.75, 3),             
("Lâmpada LED 9W", 200, '2024-06-30', '2024-12-30', 5.99, 4),               
("Refletor LED 50W", 50, '2024-06-30', '2024-12-30', 39.90, 4);        

SELECT*FROM tb_produtos;

SELECT*FROM tb_produtos WHERE preco > 100;

SELECT*FROM tb_produtos WHERE preco >70 AND preco <150;

SELECT*FROM tb_produtos WHERE nome LIKE  "%c%";

SELECT*FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.produtos_id = tb_categorias.id;

SELECT*FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.produtos_id = tb_categorias.id
WHERE tb_categorias.nome = "Material de Construção";     
