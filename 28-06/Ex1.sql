CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
ataque INT,
velocidade INT,
defesa INT
);

INSERT INTO tb_classes(nome,descricao)
VALUES
("atacante", "classe para quem quer fazer gol"),
("zagueiro", "classe para quem quer defender"),
("lateral", "classe para quem quer apoiar"),
("goleiro", "classe para quem quer defender no gol"),
("meio compo", "classe para quem quer distribuir o jogo");

ALTER TABLE tb_personagens ADD classe_id BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT tb_personagens_tb_classes
FOREIGN KEY (classe_id) REFERENCES tb_classes (id);
	
INSERT INTO tb_personagens(nome,ataque,velocidade,defesa,classe_id)
VALUES 
	("Neymar",90,95,10,1),
    ("Vinicius JR",89,99,15,1),
    ("Lucio",15,85,96,2),
    ("Paqueta",80,85,88,5),
    ("Tony Kross",80,75,88,5),
    ("Alisson",10,15,99,4),
    ("Marcelo",90,90,95,3),
    ("Cafu",70,88,98,3);
    
    SELECT*FROM tb_personagens WHERE ataque >90;
    
    SELECT*FROM tb_personagens WHERE defesa >90 AND defesa <100;
    
    SELECT*FROM tb_personagens WHERE nome LIKE "%c%";
    
    SELECT*FROM tb_personagens
	INNER JOIN tb_classes
    ON tb_personagens.classe_id = tb_classes.id;
    
    SELECT*FROM tb_personagens
	LEFT JOIN tb_classes
    ON tb_personagens.classe_id = tb_classes.id;
    
     SELECT*FROM tb_personagens
	INNER JOIN tb_classes
    ON tb_personagens.classe_id = tb_classes.id
    WHERE tb_classes.nome = "atacante";
    
    
    
    
    


