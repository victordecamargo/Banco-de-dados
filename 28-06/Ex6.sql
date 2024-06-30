CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255) NOT NULL,
quantidadedehoras INT NOT NULL,
datadeinicio DATE NOT NULL,
datadetermino DATE NOT NULL,
preco DECIMAL(6,2) NOT NULL,
cursos_id BIGINT,
CONSTRAINT fk_tb_cursos_tb_categorias
FOREIGN KEY (cursos_id)
REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES
("Desenvolvimento Web", "Aprenda a criar websites e aplicações web."),
("Marketing Digital", "Estratégias para promover produtos e serviços online."),
("Gestão de Projetos", "Domine técnicas para gerenciar projetos de forma eficiente."),
("Design Gráfico", "Criação de identidades visuais e materiais gráficos."),
("Inglês Avançado", "Aperfeiçoe suas habilidades de comunicação em inglês.");

INSERT INTO tb_cursos (nome, quantidadedehoras, datadeinicio, datadetermino, preco, cursos_id)
VALUES
("Curso de HTML e CSS", 40, '2024-07-01', '2024-08-20', 199.00, 1),
("Curso de SEO Avançado", 30, '2024-07-15', '2024-08-30', 149.00, 2),
("Curso de Gestão Ágil", 50, '2024-08-01', '2024-09-30', 249.00, 3),
("Curso de Illustrator", 60, '2024-08-15', '2024-10-15', 299.00, 4),
("Curso de Inglês Intermediário", 80, '2024-09-01', '2024-11-30', 399.00, 5),
("Curso de JavaScript", 50, '2024-07-10', '2024-09-05', 229.00, 1),
("Curso de Marketing de Conteúdo", 40, '2024-07-20', '2024-09-10', 189.00, 2),
("Curso de Photoshop", 60, '2024-08-05', '2024-10-05', 279.00, 4);

SELECT*FROM tb_cursos WHERE preco > 200;

SELECT*FROM tb_cursos WHERE preco >150 AND preco <399;

SELECT*FROM tb_cursos WHERE nome LIKE  "%j%";

SELECT*FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.cursos_id = tb_categorias.id;

SELECT*FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.cursos_id = tb_categorias.id
WHERE tb_categorias.nome = "Desenvolvimento Web";     
