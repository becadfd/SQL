CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome_jogo VARCHAR(100),
genero_jogo VARCHAR(50),

PRIMARY KEY(id)
);

CREATE TABLE tb_personagens (
    id_per BIGINT AUTO_INCREMENT PRIMARY KEY,
    personagem VARCHAR(100),
    poder_atk DECIMAL(6 , 2 ),
    poder_def DECIMAL(6 , 2 ),
    reino VARCHAR(100),
    arma VARCHAR(50),
    id_cla BIGINT,
    FOREIGN KEY (id_cla) REFERENCES tb_classes (id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (id_cla) REFERENCES tb_classes (id);

INSERT INTO tb_classes(nome_jogo, genero_jogo) 
VALUES("Once Upon a Nightmare", "Fantasia"),
("FNAF", "Terror"),
("Bomber Man", "Arcade"),
("Minecraft", "Arcade"),
("When I Close My Eyes", "Terror");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(personagem, poder_atk, poder_def, reino, arma, id_cla)
VALUES ("Emma", 3000, 1500, "Floresta Encantada", "Livro de Magia", 1),
("Cassidy", 1000, 750, "Freddy's Bear Sister Location", "Garras", 2),
("Chica", 1750, 1500, "Freddy's Bear Sister Location", "Garras", 2),
("Pink", 4000, 0, "Unity", "Bomba", 3),
("White", 4500, 0, "Aqua", "Bomba", 3),
("Creeper", 4000, 2000, "Aether", "Explosão", 4),
("Joe", 900, 1000, "Maine", "Espada", 5),
("Claubio", 2000, 1500, "Amapá", "BSM", 5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_cla;

SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id_cla WHERE id = 2;

SELECT * FROM tb_personagens WHERE poder_atk > 2000;

SELECT * FROM tb_personagens WHERE poder_def BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE personagem LIKE "C%";

