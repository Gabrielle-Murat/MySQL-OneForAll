DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Subscriptions(
  subscriptions_id INT PRIMARY KEY AUTO_INCREMENT,
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