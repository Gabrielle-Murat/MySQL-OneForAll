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