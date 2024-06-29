CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    validade DATE,
    Quantidade INT,
    preco DECIMAL(6,2) NOT NULL
    );
    
    INSERT INTO tb_produtos(nome, validade, quantidade, preco)
    VALUES ("Lamina de Barbear","2026-06-29",12,5.00),
	("Pincel", "2024-12-20", 10, 9.00),
    ("Garrafa Azul","2030-06-01",12,7.00),
	("Garrafa Rosa","2029-09-30",8,7.00),
	("Lapiz Azul", "2024-6-30", 1, 10.00),
	("Lapiz Rosa", "2024-6-30", 7, 10.00),
	("Borracha", "2024-10-31", 100, 3.00),
	("Grafite 05", "2028-1-29", 70, 1.00);
    
    INSERT INTO tb_produtos(nome, validade, quantidade, preco)
    VALUES ("KIT colonia","2028-02-20",18,5000.00);
    
     SELECT*FROM tb_produtos WHERE preco > 500.00;
    SELECT*FROM tb_produtos WHERE preco < 500.00;
    
    SELECT*FROM tb_produtos;
    
    UPDATE tb_produtos
    SET preco = 6.00
    WHERE id = 1;
    
    SELECT*FROM tb_produtos;
    
    
    
    
    
    
    
    