SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `epreuves`;
CREATE TABLE `epreuves` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_sports` varchar(100) DEFAULT NULL,
  `epreuves` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `epreuves` (`id`, `id_sports`, `epreuves`) VALUES
(1,	'1',	'100m'),
(2,	'1',	'200m'),
(3,	'1',	'400m'),
(4,	'1',	'800m'),
(5,	'1',	'1500m'),
(6,	'1',	'5000m'),
(7,	'1',	'10000m'),
(8,	'1',	'Marathon'),
(9,	'1',	'110m haies'),
(10,	'1',	'400m haies'),
(11,	'1',	'3000m haies'),
(12,	'1',	'4 x 100m haies'),
(13,	'1',	'10km marche'),
(14,	'1',	'Saut en hauteur'),
(15,	'1',	'Saut à la perche'),
(16,	'1',	'Saut en longueur'),
(17,	'1',	'Triple saut'),
(18,	'1',	'Lancer du poids '),
(19,	'1',	'Lancer du disque'),
(20,	'1',	'lancer du marteau'),
(21,	'1',	'lancr du javelot'),
(22,	'1',	'Décathlon'),
(23,	'2',	'Skiff'),
(24,	'2',	'Deux de couple'),
(25,	'2',	'Deux de couple poids léger'),
(26,	'2',	'Quatre de couple'),
(27,	'2',	'Deux sans barreur'),
(28,	'2',	'Quatre sans barreur'),
(29,	'2',	'Huit'),
(30,	'3',	'Simple'),
(31,	'3',	'Double'),
(32,	'4',	'Tournoi masculin'),
(33,	'4',	'Tournoi féminin'),
(34,	'5',	'Tournoi masculin'),
(35,	'5',	'Tournoi féminin')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `id_sports` = VALUES(`id_sports`), `epreuves` = VALUES(`epreuves`);

DROP TABLE IF EXISTS `sports`;
CREATE TABLE `sports` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sports` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sports` (`id`, `sports`) VALUES
(1,	'Athlétisme'),
(2,	'aviron'),
(3,	'badminton'),
(4,	'basketball'),
(5,	'basketball 3×3'),
(6,	'boxe'),
(7,	'canoë sprint'),
(8,	'canoë-kayak slalom'),
(9,	'cyclisme sur piste'),
(10,	'cyclisme sur route'),
(11,	'BMX freestyle'),
(12,	'BMX racing'),
(13,	'Mountain bike (VTT)'),
(14,	'escrime'),
(15,	'football'),
(16,	'golf'),
(17,	'gymnastique artistique'),
(18,	'gymnastique rythmique'),
(19,	'trampoline'),
(20,	'haltérophilie'),
(21,	'handball'),
(22,	'hockey'),
(23,	'judo'),
(24,	'lutte'),
(25,	'pentathlon moderne'),
(26,	'rugby'),
(27,	'natation'),
(28,	'natation artistique'),
(29,	'natation marathon'),
(30,	'plongeon'),
(31,	'waterpolo'),
(32,	'sports équestres'),
(33,	'taekwondo'),
(34,	'tennis'),
(35,	'tennis de table'),
(36,	'tir'),
(37,	'tir à l’arc'),
(38,	'triathlon'),
(39,	'voile'),
(40,	'volleyball'),
(41,	'volleyball de plage'),
(42,	'breaking'),
(43,	'escalade sportive'),
(44,	'skateboard'),
(45,	'surf')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `sports` = VALUES(`sports`);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `identifiant`, `password`) VALUES
(1,	'admin',	'$2a$12$96NJW0zoD56e1rqQxMIyQO2xw.3Dd26wRiAkPSQEFWrF4nzMu1I.S')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `identifiant` = VALUES(`identifiant`), `password` = VALUES(`password`);

-- 2024-03-05 11:08:02