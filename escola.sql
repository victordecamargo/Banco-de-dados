CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
idade INT,
numerosala INT,
notas DECIMAL(6,2)
);

INSERT INTO tb_estudantes(nome,idade,numerosala,nota)
VALUES("Victor Camargo",26,12,10),
("Amanda Pereira",29,12,4),
("José Algusto",18,5,6),
("Maria Clara",20,15,9),
("Maite Borelli",21,10,8),
("Isabella Heloisa",23,12,7),
("Maria Silvia",40,2,10.00),
("Jaqueline Capela",33,11,4);

SELECT*FROM tb_estudantes;

SELECT*FROM tb_estudantes WHERE notas > 7.00;
   
   UPDATE tb_estudantes
   SET notas = 7.00
   WHERE id = 2;
   
   SELECT*FROM tb_estudantes;