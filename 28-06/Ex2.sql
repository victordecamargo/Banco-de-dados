CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR (10) NOT NULL,
tamanho VARCHAR(20) NOT NULL,
sabor VARCHAR (255) NOT NULL,
quantidade INT NOT NULL,
categorias_id BIGINT,
CONSTRAINT fk_tb_pizzas_tb_categorias
FOREIGN KEY (categorias_id)
REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias(nome,descricao)
VALUES
("Pizza Calabresa","Pizza de calabresa simples com molho"),
("Pizza 4 Queijos","combinação de queijos mussarela, gorgonzola, parmesão e provolone"),
("Pizza Peito de Peru","Pizza de peito de peru simples com molho e tomata"),
("Pizza Frango","Pizza de frango simples com molho"),
("Pizza Bacon","Pizza de Bancon simples com molho"),
("Nutela","Pizza doce de nutella com morangos"),
("Doce de Leite","Pizza de doce de leite com morangos");

INSERT INTO tb_pizzas(tipo,tamanho,sabor,quantidade,categorias_id)
VALUES
("Doce","Grande","Doce de leite",3,7),
("Salgada","Grande","Pizza Bacon",1,5),
("Doce","Broto","Nutela",1,6),
("Doce","Grande","Doce de leite",5,7),
("Salgada","Media","Pizza Calabresa",2,1),
("Salgada","Grande","Pizza 4 Queijos",3,2),
("Salgada","Broto","Pizza Peito de Peru",10,3),
("Salgada","Grande","Frango",20,4);

SELECT*FROM tb_pizzas WHERE quantidade > 3;

SELECT*FROM tb_pizzas WHERE quantidade >2 AND quantidade <5;

SELECT*FROM tb_pizzas WHERE sabor LIKE "%d%";

SELECT*FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT*FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_pizzas.tipo = "Salgada";









