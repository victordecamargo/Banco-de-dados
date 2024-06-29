CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    idade INT,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(6,2)
    );
    
    INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
    VALUES ("Neymar",18,"CEO",5000.00);
    
    INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
    VALUES ("Messi",40,"Zelador",1000.00);
    
    INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
    VALUES ("Ronaldo",32,"Ajudante Geral",1400.00);
    
    INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
    VALUES ("Marta",25,"Gerente",3000.00);
    
    INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
    VALUES ("Victoria",16,"Estagiaria",1000.00);
    
    SELECT*FROM tb_colaboradores;
    
    SELECT*FROM tb_colaboradores WHERE salario > 2000.00;
    SELECT*FROM tb_colaboradores WHERE salario < 2000.00;
    
    UPDATE tb_colaboradores 
    SET salario = 6000.00
    WHERE id = 1;
    
    SELECT*FROM tb_colaboradores;
    
    