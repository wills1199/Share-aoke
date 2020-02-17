CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(30)
);

CREATE TABLE `friends` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `users_id` int,
  `friends_id` int
);

CREATE TABLE `playlists` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `users_id` int,
  `playlist_name` varchar(250),
  `decription` varchar(250)
);

CREATE TABLE `songs` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(50),
  `album` varchar(50),
  `artist` varchar(50),
  `genre` varchar(50)
);

CREATE TABLE `playlists_songs` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `playlist_id` int,
  `song_id` int
);

ALTER TABLE `friends` ADD FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

ALTER TABLE `friends` ADD FOREIGN KEY (`friends_id`) REFERENCES `users` (`id`);

ALTER TABLE `playlists` ADD FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

ALTER TABLE `playlists_songs` ADD FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`);

ALTER TABLE `playlists_songs` ADD FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);