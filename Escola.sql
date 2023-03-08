CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT, 
nome_aluno VARCHAR(255),
turma INT,
nota DECIMAL,
extracurricular VARCHAR(255),
transporte BOOLEAN,

PRIMARY KEY(id)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos (nome_aluno, turma, nota, extracurricular, transporte) VALUES ("Afonso", 01, 7.00, "Xadrez", true),
("Antonieta", 03, 5.00, "Tênis", true), 
("Larissa", 01, 9.00, "Dança", false), 
("Laura", 02, 9.50, "Xadrez", true),
("Pedro", 01, 7.75, "Dança", false),
("Abel", 02, 6.00, "Basquete", false),
("Julia", 03, 9.00, "Tênis", true),
("Danilo", 02, 8.75, "Xadrez", false);

SELECT nome_aluno FROM tb_alunos WHERE nota > 7;

SELECT nome_aluno FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 8 WHERE id=7;

ALTER TABLE tb_alunos MODIFY nota DECIMAL(6,2);

