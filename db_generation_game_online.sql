CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    hp INT(8),
    nivel INT(3),
    mana INT(3),
    defesa INT(3),
    ataque INT(3),
    id_classes BIGINT,

    PRIMARY KEY(id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_id_classes FOREIGN KEY (id_classes) REFERENCES tb_classes (id) ;

INSERT INTO tb_classes (nome,descricao) VALUES ("guerreiro","Habilidades de combate corpo a corpo: Guerreiros são especialistas em lutar com armas como espadas, machados e lanças, e muitas vezes são capazes de causar danos significativos com essas armas.");
INSERT INTO tb_classes (nome,descricao) VALUES ("arcano","Habilidade em magia: Arcanos são especialistas em magia e geralmente têm acesso a uma ampla variedade de feitiços e habilidades mágicas. Essas habilidades podem incluir dano mágico, cura, controle de multidões.");
INSERT INTO tb_classes (nome,descricao) VALUES ("hunter","Habilidade em combate a distância: Hunters são especialistas em combate a distância, geralmente usando arcos, bestas ou armas de fogo para causar dano a seus oponentes.");
INSERT INTO tb_classes (nome,descricao) VALUES ("Knight","Habilidade em combate corpo a corpo: Knights são especialistas em combate corpo a corpo, geralmente usando espadas, machados, martelos ou lanças para causar dano a seus oponentes.");
INSERT INTO tb_classes (nome,descricao) VALUES ("Ladrao","Habilidade em furtividade: Ladrões são especialistas em se mover pelo mundo do jogo sem serem detectados. Isso pode incluir habilidades como se esconder nas sombras, se misturar com a multidão ou se mover rapidamente pelo ambiente.");

INSERT INTO tb_personagens (nome,hp,nivel,mana,defesa,ataque,id_classes) VALUES ("SirFera",2000,99,0,3000,4000,1);
INSERT INTO tb_personagens (nome,hp,nivel,mana,defesa,ataque,id_classes) VALUES ("GaloCego",1500,5,1000,1000,1500,3);
INSERT INTO tb_personagens (nome,hp,nivel,mana,defesa,ataque,id_classes) VALUES ("Ronaldinho",1000,99,3000,2000,5000,2);
INSERT INTO tb_personagens (nome,hp,nivel,mana,defesa,ataque,id_classes) VALUES ("SirEltonJon",2000,1,0,3000,1000,1);
INSERT INTO tb_personagens (nome,hp,nivel,mana,defesa,ataque,id_classes) VALUES ("MrsHera",1000,4,1000,2000,500,2);
INSERT INTO tb_personagens (nome,hp,nivel,mana,defesa,ataque,id_classes) VALUES ("Solf",1500,13,1000,1000,3000,3);
INSERT INTO tb_personagens (nome,hp,nivel,mana,defesa,ataque,id_classes) VALUES ("Cuttle",500,13,1000,1000,1000,5);
INSERT INTO tb_personagens (nome,hp,nivel,mana,defesa,ataque,id_classes) VALUES ("SirMaluco",4000,53,1000,3000,5000,4);


SELECT * 
FROM tb_personagens
WHERE ataque > 2000 ;


SELECT * 
FROM tb_personagens
WHERE defesa 
BETWEEN 1000 AND 2000;

SELECT *
FROM tb_personagens
WHERE nome LIKE "c%";

SELECT * 
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.id_classes;

SELECT * 
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.id_classes
WHERE tb_classes.nome = "guerreiro";