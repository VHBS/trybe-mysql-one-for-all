DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos(
	plano_id INT PRIMARY KEY AUTO_INCREMENT,
	plano VARCHAR(50) NOT NULL,
  valor DECIMAL(5,2) NOT NULL
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (plano, valor)
VALUES
	('gratuito', 0),
	('universitário', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);

CREATE TABLE SpotifyClone.usuarios(
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  data_de_assinatura DATE NOT NULL,
	plano_id INT,
	FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

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

CREATE TABLE SpotifyClone.artistas(
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
	artista VARCHAR(50) NOT NULL
) engine = InnoDB;

INSERT INTO SpotifyClone.artistas (artista)
VALUES 
	('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog');
  
CREATE TABLE SpotifyClone.albums(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
	album VARCHAR(50) NOT NULL,
  ano_de_lancamento INT NOT NULL,
  artista_id INT,
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.albums(album, ano_de_lancamento, artista_id)
VALUES
	('Envious', 1990, 1),
  ('Exuberant', 1996, 1),
  ('Hallowed Steam', 1995, 2),
  ('Incandescent', 1998, 3),
  ('Temporary Culture', 2001, 4),
  ('Library of liberty',2003, 4),
  ('Chained Down', 2007, 5),
  ('Cabinet of fools', 2012, 5),
  ('No guarantees', 2015, 5),
  ('Apparatus', 2015, 6);

CREATE TABLE SpotifyClone.cancoes(
  cancao_id INT PRIMARY KEY AUTO_INCREMENT,
  cancao VARCHAR(100) NOT NULL,
  duracao_segundos INT NOT NULL,
	album_id INT,
	FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;
    
INSERT INTO SpotifyClone.cancoes(cancao, duracao_segundos, album_id)
VALUES 
	('Soul For Us', 200, 1),
  ('Reflections Of Magic', 163, 1),
  ('Dance With Her Own', 116, 1),
  ('Troubles Of My Inner Fire', 203, 1),
  ('Time Fireworks', 152, 1),
  ('Magic Circus', 105, 2),
  ('Honey, So Do I', 207, 2),
  ("Sweetie, Let's Go Wild", 139, 2),
  ('She Knows', 244, 2),
  ('Fantasy For Me', 100, 3),
  ('Celebration Of More', 146, 3),
  ('Rock His Everything', 223, 3),
  ('Home Forever', 231, 3),
  ('Diamond Power', 241, 3),
  ("Let's Be Silly", 132, 3),
  ('Thang Of Thunder', 240, 4),
  ('Words Of Her Life', 185, 4),
  ('Without My Streets', 176, 4),
  ('Need Of The Evening', 190, 4),
  ('History Of My Roses', 222, 4),
  ('Without My Love', 111, 4),
  ('Walking And Game', 123, 4),
  ('Young And Father', 197, 4),
  ('Finding My Traditions', 179, 5),
  ('Walking And Man', 229, 5),
  ('Hard And Time', 135, 5),
  ("Honey, I'm A Lone Wolf", 150, 5),
  ("She Thinks I Won't Stay Tonight", 166, 5),
  ("He Heard You're Bad For Me", 154, 5),
  ("He Hopes We Can't Stay", 210, 5),
  ('I Know I Know', 117, 5),
  ("He's Walking Away", 159, 5),
  ("He's Trouble", 138, 5),
  ('I Heard I Want To Bo Alone', 120, 5),
  ('I Ride Alone', 151, 5),
  ('Honey', 79, 6),
  ('You Cheated On Me', 95, 6),
  ("Wouldn't It Be Nice", 213, 6),
  ('Baby', 136, 6),
  ('You Make Me Feel So..', 83, 6);