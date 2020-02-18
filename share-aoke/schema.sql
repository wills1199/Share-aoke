/**
 * Execute this file from the command line by typing:
 *   mysql -u root < schema.sql
 */
 
DROP DATABASE IF EXISTS shareaoke;
CREATE DATABASE shareaoke;

USE shareaoke;

CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(30)
);

CREATE TABLE `friends` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_users` int,
  `id_friends` int
);

CREATE TABLE `playlists` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_users` int,
  `name` varchar(250),
  `decription` varchar(250)
);

CREATE TABLE `songs` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(50),
  `album` varchar(50),
  `artist` varchar(50),
  `genre` varchar(50)
);

CREATE TABLE `party` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_playlist` int,
  `id_songs` int
);

ALTER TABLE `friends` ADD FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

ALTER TABLE `friends` ADD FOREIGN KEY (`id_friends`) REFERENCES `users` (`id`);

ALTER TABLE `playlists` ADD FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

ALTER TABLE `playlists_songs` ADD FOREIGN KEY (`id_playlist`) REFERENCES `playlists` (`id`);

ALTER TABLE `playlists_songs` ADD FOREIGN KEY (`id_songs`) REFERENCES `songs` (`id`);