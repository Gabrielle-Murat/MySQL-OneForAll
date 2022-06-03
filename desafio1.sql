DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Subscriptions(
  subscription_id INT PRIMARY KEY AUTO_INCREMENT,
  subscription_name VARCHAR(30) NOT NULL,
  subscription_value DECIMAL(3,2) NOT NULL,
) ENGINE=InnoDB;

INSERT INTO
  SpotifyClone.Subscriptions(subscription_name, subscription_value)
VALUES
  ('pessoal', 6.99), -- id: 1
  ('familiar', 7.99), -- id: 2
  ('universitário', 5.99), -- id: 3
  ('gratuito', 0.00); -- id: 4

CREATE TABLE SpotifyClone.Artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(50) NOT NULL,
) ENGINE=InnoDB;

INSERT INTO
  SpotifyClone.Artists
VALUES
  ('Walter Phoenix'), -- id: 1
  ('Peter Strong'), -- id: 2
  ('Lance Day'), -- id: 3
  ('Freedie Shannon'), -- id: 4
  ('Tyler Isle'), -- id: 5
  ('Fog'); -- id: 6

CREATE TABLE SpotifyClone.Users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(40) NOT NULL,
  user_age TINYINT NOT NULL,
  subscription_id INT NOT NULL,
  subscription_date DATE NOT NULL,
  FOREIGN KEY (subscription_id) REFERENCES SpotifyClone.Subscriptions(subscription_id)
) ENGINE=InnoDB;

INSERT INTO
  SpotifyClone.Users
VALUES
  ('Thati', 23, 4, 2019-10-20), -- id: 1
  ('Cintia', 35, 2, 2017-12-30), -- id: 2
  ('Bill', 20, 3, 2019-06-05), -- id: 3
  ('Roger', 45, 1, 2020-05-13), -- id: 4
  ('Norman', 58, 1, 2017-02-17), -- id: 5
  ('Patrick', 33, 2, 2017-01-06), -- id: 6
  ('Vivian', 26, 3, 2018-01-05), -- id: 7
  ('Carol', 19, 3, 2018-02-14), -- id: 8
  ('Angelina', 42, 2, 2018-04-29), -- id: 9
  ('Paul', 46, 2, 2017-01-17); -- id: 10

CREATE TABLE SpotifyClone.Albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_title VARCHAR(50) NOT NULL,
  albums_year_release YEAR NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.Artists(artist_id)
) ENGINE=InnoDB;

INSERT INTO
  SpotifyClone.Albums
VALUES
  ('Envious', 1990, 1), -- id: 1
  ('Exuberant', 1993, 1), -- id: 2
  ('Hallowed Steam', 1995, 2), -- id: 3
  ('Incandescent', 1998, 3), -- id: 4
  ('Temporary Culture', 2001, 4), -- id: 5
  ('Library of liberty', 2003, 4), -- id: 6
  ('Chained Down', 2007, 5), -- id: 7
  ('Cabinet of fools', 2012, 5), -- id: 8
  ('No guarantees', 2015, 5), -- id: 9
  ('Apparatus', 2015, 6); -- id: 10

CREATE TABLE SpotifyClone.Songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(50) NOT NULL,
  song_length_seconds INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.Albums(album_id)
) ENGINE=InnoDB

INSERT INTO
  SpotifyClone.Songs
VALUES
  ('Soul For Us', 200, 1), -- id: 1
  ('Reflections Of Magic', 163, 1), -- id: 2
  ('Dance With Her Own', 116, 1), -- id: 3
  ('Troubles Of My Inner Fire', 203, 2), -- id: 4
  ('Time Fireworks', 152, 2), -- id: 5
  ('Magic Circus', 105, 3), -- id: 6
  ('Honey, So Do I', 207, 3), -- id: 7
  ("Sweetie, Let's Go Wild", 139, 3), -- id: 8
  ('She Knows', 244, 3), -- id: 9
  ('Fantasy For Me', 100, 4), -- id: 10
  ('Celebration Of More', 146, 4), -- id: 11
  ('Rock His Everything', 223, 4), -- id: 12
  ('Home Forever', 231, 4), -- id: 13
  ('Diamond Power', 241, 4), -- id: 14
  ("Let's Be Silly", 132, 4), -- id: 15
  ('Thang Of Thunder', 240, 5), -- id: 16
  ('Words Of Her Life', 185, 5), -- id: 17
  ('Without My Streets', 176, 5), -- id: 18
  ('Need Of The Evening', 190, 6), -- id: 19
  ('History Of My Roses', 222, 6), -- id: 20
  ('Without My Love', 111, 6), -- id: 21
  ('Walking And Game', 123, 6), -- id: 22
  ('Young And Father', 197, 6), -- id: 23
  ('Finding My Traditions', 179, 7), -- id: 24
  ('Walking And Man', 229, 7), -- id: 25
  ('Hard And Time', 135, 7), -- id: 26
  ("Honey, I'm A Lone Wolf", 150, 7), -- id: 27
  ("She Thinks I Won't Stay Tonight", 166, 8), -- id: 28
  ("He Heard You're Bad For Me", 154, 8), -- id: 29
  ("He Hopes We Can't Stay", 210, 8), -- id: 30
  ('I Know I Know', 117, 8), -- id: 31
  ("He's Walking Away", 159, 9), -- id: 32
  ("He's Trouble", 138, 9), -- id: 33
  ('I Heard I Want To Bo Alone', 120, 9), -- id: 34
  ('I Ride Alone', 151, 9), -- id: 35
  ('Honey', 79, 10), -- id: 36
  ('You Cheated On Me', 95, 10), -- id: 37
  ("Wouldn't It Be Nice", 213, 10), -- id: 38
  ('Baby', 136, 10), -- id: 39
  ('You Make Me Feel So..', 83, 10); -- id: 40