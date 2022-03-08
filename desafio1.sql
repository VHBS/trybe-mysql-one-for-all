DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos(
	plano_id INT PRIMARY KEY AUTO_INCREMENT,
	plano VARCHAR(50) NOT NULL,
    valor DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuarios(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    data_de_assinatura DATE NOT NULL,
	plano_id INT,
    FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (plano, valor)
VALUES
	('gratuito', 0),
	('universitário', 5.99),
    ('pessoal', 6.99),
    ('familiar', 7.99);
    
INSERT INTO SpotifyClone.usuarios (
	usuario,
    idade,
    data_de_assinatura,    
	plano_id
)
VALUES
	('Thati', 23, '2019-10-20', 1),
    ('Cintia', 35, '2017-12-30', 4),
    ('Bill', 20, '2019-06-05', 2),
    ('Roger', 45, '2020-05-13', 3),
    ('Norman', 58, '2017-02-17', 3),
    ('Patrick', 33, '2017-01-06', 4),
    ('Vivian', 23, '2018-01-05', 2),
    ('Carol', 19, '2018-02-14', 2),
    ('Angelina', 42, '2018-04-29', 4),
    ('Paul', 46, '2017-01-17', 4);