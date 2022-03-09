DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_plano VARCHAR(40) NOT NULL,
  preco_plano DOUBLE NOT NULL
) engine = innodb;

INSERT INTO SpotifyClone.planos (nome_plano, preco_plano)
VALUES
  ("gratuito", 0),
  ("universitário", 5.99),
  ("pessoal", 6.99),
  ("familiar", 7.99);

CREATE TABLE SpotifyClone.usuarios(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_usuario VARCHAR(40) NOT NULL,
  idade_usuario INT NOT NULL,
  data_assinatura_usuario DATE NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos (id)
) engine = innodb;

INSERT INTO SpotifyClone.usuarios (nome_usuario, idade_usuario, data_assinatura_usuario, plano_id)
VALUES
  ('Thati', 23, '2019-10-20', 1),
  ('Cintia', 35, '2017-12-30', 4),
  ('Bill', 20, '2019-06-05', 2),
  ('Roger', 45, '2020-05-13', 3),
  ('Norman', 58, '2017-02-17', 3),
  ('Patrick', 33, '2017-01-06', 4),
  ('Vivian', 26, '2018-01-05', 2),
  ('Carol', 19, '2018-02-14', 2),
  ('Angelina', 42, '2018-04-29', 4),
  ('Paul', 46, '2017-01-17', 4);
  
CREATE TABLE SpotifyClone.artistas(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_artista VARCHAR(40) NOT NULL
  ) engine = innodb;

INSERT INTO SpotifyClone.artistas (nome_artista)
VALUES
  ("Fog"),
  ("Freedie Shannon"),
  ("Lance Day"),
  ("Peter Strong"),
  ("Tyler Isle"),
  ("Walter Phoenix");

CREATE TABLE SpotifyClone.albuns(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_album VARCHAR(40) NOT NULL,
  ano_lancamento YEAR NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas (id)
) engine = innodb;

INSERT INTO SpotifyClone.albuns (nome_album, ano_lancamento, artista_id)
VALUES
  ("Apparatus", 2015, 1),
  ("Cabinet of fools", 2012, 5),
  ("Chained Down", 2007, 5),
  ("Envious", 1990, 6),
  ("Exuberant", 1993, 6),
  ("Hallowed Steam", 1995, 4),
  ("Incandescent", 1998, 3),
  ("Library of liberty", 2003, 2),
  ("No guarantees", 2015, 5),
  ("Temporary Culture", 2001, 2);

CREATE TABLE SpotifyClone.musicas(
	id INT PRIMARY KEY AUTO_INCREMENT,
  name_musica VARCHAR(40) NOT NULL,
  tamanho_musica INT NOT NULL,
  album_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY(album_id) REFERENCES albuns (id),
  FOREIGN KEY (artista_id) REFERENCES artistas (id)
) engine = innodb;

INSERT INTO SpotifyClone.musicas (name_musica, tamanho_musica, album_id, artista_id)
VALUES
  ("Baby", 136, 1, 1),
  ("Celebration Of More", 146, 7, 3),
  ("Dance With Her Own", 116, 4, 6),
  ("Diamond Power", 241, 7, 3),
  ("Fantasy For Me", 100, 7, 3),
  ("Finding My Traditions", 179, 3, 5),
  ("Hard And Time", 135, 3, 5),
  ("He Heard You're Bad For Me", 154, 2, 5),
  ("He Hopes We Can't Stay", 210, 2, 5),
  ("He's Trouble", 138, 9, 5),
  ("He's Walking Away", 159, 9, 5),
  ("History Of My Roses", 222, 8, 2),
  ("Home Forever", 231, 7, 3),
  ("Honey, I'm A Lone Wolf", 150, 3, 5),
  ("Honey, So Do I", 207, 6, 4),
  ("Honey", 79, 1, 1),
  ("I Heard I Want To Bo Alone", 120, 9, 5),
  ("I Know I Know", 117, 2, 5),
  ("I Ride Alone", 151, 9, 5),
  ("Let's Be Silly", 132, 7, 3),
  ("Magic Circus", 105, 6, 4),
  ("Need Of The Evening", 190, 8, 2),
  ("Reflections Of Magic", 163, 4, 6),
  ("Rock His Everything", 223, 7, 3),
  ("She Knows", 244, 6, 4),
  ("She Thinks I Wont Stay Tonight", 166, 2, 5),
  ("Sweetie, Let's Go Wild", 139, 6, 4),
  ("Thang Of Thunder", 240, 10, 2),
  ("Time Fireworks", 152, 5, 6),
  ("Troubles Of My Inner Fire", 203, 5, 6),
  ("Walking And Game", 123, 8, 2),
  ("Walking And Man", 229, 3, 5),
  ("Without My Love", 111, 8, 2),
  ("Without My Streets", 176, 10, 2),
  ("Words Of Her Life", 185, 10, 2),
  ("Wouldn't It Be Nice", 213, 1, 1),
  ("You Cheated On Me", 95, 1, 1),
  ("You Make Me Feel So..", 83, 1, 1),
  ("Young And Father", 197, 8, 2),
  ("Soul For Us", 200, 4, 6);

CREATE TABLE SpotifyClone.historico_reproducoes(
  usuario_id INT NOT NULL,
  musica_id INT NOT NULL,
  historico_reproducao TIMESTAMP NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (id),
  FOREIGN KEY (musica_id) references musicas (id)
) engine = innodb;

INSERT INTO SpotifyClone.historico_reproducoes (usuario_id, musica_id, historico_reproducao)
VALUES
  (1, 16, '2020-02-28 10:45:55'),
  (1, 32, '2020-05-02 05:30:35'),
  (1, 39, '2020-03-06 11:22:33'),
  (1, 4, '2020-08-05 08:05:17'),
  (1, 20, '2020-09-14 16:32:22'),
  (2, 17, '2020-01-02 07:40:33'),
  (2, 6, '2020-05-16 06:16:22'),
  (2, 33, '2020-10-09 12:27:48'),
  (2, 1, '2020-09-21 13:14:46'),
  (3, 21, '2020-11-13 16:55:13'),
  (3, 3, '2020-12-05 18:38:30'),
  (3, 7, '2020-07-30 10:00:00'),
  (4, 23, '2021-08-15 17:10:10'),
  (4, 19, '2021-07-10 15:20:30'),
  (4, 14, '2021-01-09 01:44:33'),
  (5, 15, '2020-07-03 19:33:28'),
  (5, 24, '2017-02-24 21:14:22'),
  (5, 4, '2020-08-06 15:23:43'),
  (5, 40, '2020-11-10 13:52:27'),
  (6, 36, '2019-02-07 20:33:48'),
  (6, 8, '2017-01-24 00:31:17'),
  (6, 9, '2017-10-12 12:35:20'),
  (6, 31, '2018-05-29 14:56:41'),
  (7, 29, '2018-05-09 22:30:49'),
  (7, 30, '2020-07-27 12:52:58'),
  (7, 2, '2018-01-16 18:40:43'),
  (8, 1, '2018-03-21 16:56:40'),
  (8, 38, '2020-10-18 13:38:05'),
  (8, 11, '2019-05-25 08:14:03'),
  (8, 10, '2021-08-15 21:37:09'),
  (9, 28, '2021-05-24 17:23:45'),
  (9, 35, '2018-12-07 22:48:52'),
  (9, 27, '2021-03-14 06:14:26'),
  (9, 25, '2020-04-01 03:36:00'),
  (10, 12, '2017-02-06 08:21:34'),
  (10, 33, '2017-12-04 05:33:43'),
  (10, 24, '2017-07-27 05:24:49'),
  (10, 13, '2017-12-25 01:03:57');

CREATE TABLE SpotifyClone.seguidores(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (id),
  FOREIGN KEY (artista_id) REFERENCES artistas (id)
) engine = innodb;

INSERT INTO SpotifyClone.seguidores (usuario_id, artista_id)
VALUES
  (1, 6),
  (1, 2),
  (1, 3),
  (2, 6),
  (2, 3),
  (3, 4),
  (3, 6),
  (4, 2),
  (5, 5),
  (5, 1),
  (6, 1),
  (6, 3),
  (6, 6),
  (7, 4),
  (7, 5),
  (8, 6),
  (8, 5),
  (9, 1),
  (9, 2),
  (9, 3),
  (10, 4),
  (10, 1);
  