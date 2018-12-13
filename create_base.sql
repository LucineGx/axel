DROP DATABASE IF EXISTS axel;
CREATE DATABASE axel CHARACTER SET 'utf8';
USE axel;

CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON axel .*  TO 'admin'@'localhost';

CREATE TABLE tracks (
  id MEDIUMINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  user SMALLINT UNSIGNED NOT NULL,
  lat DECIMAL(9,7) UNSIGNED NOT NULL,
  lon DECIMAL(9,7) UNSIGNED NOT NULL
) ENGINE=InnoDB;
